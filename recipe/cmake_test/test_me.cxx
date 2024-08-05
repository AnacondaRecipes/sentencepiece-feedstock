#include <iostream>

#include <sentencepiece_trainer.h>
#include <sentencepiece_processor.h>

// cobbled together from https://github.com/google/sentencepiece/blob/master/doc/api.md
int main(int argc, char** argv) {
    sentencepiece::SentencePieceTrainer::Train("--input=../data/botchan.txt --model_prefix=m --vocab_size=1000");

    // somehow, the below doesn't seem to run on windows at
    // the moment (or at least doesn't produce log output)
    sentencepiece::SentencePieceProcessor processor;
    const auto status = processor.Load("./m.model");
    if (!status.ok()) {
       std::cerr << status.ToString() << std::endl;
       return 1;
    }

    std::vector<std::string> pieces;
    processor.Encode("This is a test.", &pieces);
    for (const std::string &token : pieces) {
      std::cout << token << std::endl;
    }

    return 0;
}
