module Mappings
  def alphabet
     {"A" => 0,
            "B" => 1,
            "C" => 2,
            "D" => 3,
            "E" => 4,
            "F" => 5,
            "G" => 6,
            "H" => 7,
            "I" => 8,
            "J" => 9,
            "K" => 10,
            "L" => 11,
            "M" => 12,
            "N" => 13,
            "O" => 14,
            "P" => 15,
            "Q" => 16,
            "R" => 17,
            "S" => 18,
            "T" => 19,
            "U" => 20,
            "V" => 21,
            "W" => 22,
            "X" => 23,
            "Y" => 24,
            "Z" => 25,
            0 => "A",
            1 => "B",
            2 => "C",
            3 => "D",
            4 => "E",
            5 => "F",
            6 => "G",
            7 => "H",
            8 => "I",
            9 => "J",
            10 => "K",
            11 => "L",
            12 => "M",
            13 => "N",
            14 => "O",
            15 => "P",
            16 => "Q",
            17 => "R",
            18 => "S",
            19 => "T",
            20 => "U",
            21 => "V",
            22 => "W",
            23 => "X",
            24 => "Y",
            25 => "Z"}

    end       
    
    def convertMappings
      { "III" => 
                { 0 => 1,
                  1 => 3,
                  2 => 5,
                  3 => 7,
                  4 => 9,
                  5 => 11,
                  6 => 2,
                  7 => 15,
                  8 => 17,
                  9 => 19,
                  10 => 23,
                  11 => 21,
                  12 => 25,
                  13 => 13,
                  14 => 24,
                  15 => 4,
                  16 => 8,
                  17 => 22,
                  18 => 6,
                  19 => 0,
                  20 => 10,
                  21=> 12,
                  22 => 20,
                  23 => 18,
                  24 => 16,
                  25 => 14
                },
              "II" => 
                        { 0 => 0,
                          1 => 9,
                          2 => 3,
                          3 => 10,
                          4 => 18,
                          5 => 8,
                          6 => 17,
                          7 => 20,
                          8 => 23,
                          9 => 1,
                          10 => 11,
                          11 => 7,
                          12 => 22,
                          13 => 19,
                          14 => 12,
                          15 => 2,
                          16 => 16,
                          17 => 6,
                          18 => 25,
                          19 => 13,
                          20 => 15,
                          21=> 24,
                          22 => 5,
                          23 => 21,
                          24 => 14,
                          25 => 4
                        },
                        "I" => 
                                  { 0 => 4,
                                    1 => 10,
                                    2 => 12,
                                    3 => 5,
                                    4 => 11,
                                    5 => 6,
                                    6 => 3,
                                    7 => 16,
                                    8 => 21,
                                    9 => 25,
                                    10 => 13,
                                    11 => 19,
                                    12 => 14,
                                    13 => 22,
                                    14 => 24,
                                    15 => 7,
                                    16 => 23,
                                    17 => 20,
                                    18 => 18,
                                    19 => 15,
                                    20 => 0,
                                    21=> 8,
                                    22 => 1,
                                    23 => 17,
                                    24 => 2,
                                    25 => 9
                                  }                        
      }
    end
    def reflectMappings
       
                { "A" => "Y",
                  "B" => "R",
                  "C" => "U",
                  "D" => "H",
                  "E" => "Q",
                  "F" => "S",
                  "G" => "L",
                  "H" => "D",
                  "I" => "P",
                  "J" => "X",
                  "K" => "N",
                  "L" => "G",
                  "M" => "O",
                  "N" => "K",
                  "O" => "M",
                  "P" => "I",
                  "Q" => "E",
                  "R" => "B",
                  "S" => "F",
                  "T" => "Z",
                  "U" => "C",
                  "V"=> "W",
                  "W" => "V",
                  "X" => "J",
                  "Y" => "A",
                  "Z" => "T"
                } 
                end   
                
                def reverseMappings
                  { "III" => 
                            { 0 => 19,
                              1 => 0,
                              2 => 6,
                              3 => 1,
                              4 => 15,
                              5 => 2,
                              6 => 18,
                              7 => 3,
                              8 => 16,
                              9 => 4,
                              10 => 20,
                              11 => 5,
                              12 => 21,
                              13 => 13,
                              14 => 25,
                              15 => 7,
                              16 => 24,
                              17 => 8,
                              18 => 23,
                              19 => 9,
                              20 => 22,
                              21 => 11,
                              22 => 17,
                              23 => 10,
                              24 => 14,
                              25 => 12
                            },
                          "II" => 
                                    { 0 => 0,
                                      1 => 9,
                                      2 => 15,
                                      3 => 2,
                                      4 => 25,
                                      5 => 22,
                                      6 => 17,
                                      7 => 11,
                                      8 => 5,
                                      9 => 1,
                                      10 => 3,
                                      11 => 10,
                                      12 => 14,
                                      13 => 19,
                                      14 => 24,
                                      15 => 20,
                                      16 => 16,
                                      17 => 6,
                                      18 => 4,
                                      19 => 13,
                                      20 => 7,
                                      21 => 23,
                                      22 => 12,
                                      23 => 8,
                                      24 => 21,
                                      25 => 18
                                    },
                                    "I" => 
                                              { 0 => 20,
                                                1 => 22,
                                                2 => 24,
                                                3 => 6,
                                                4 => 0,
                                                5 => 3,
                                                6 => 5,
                                                7 => 15,
                                                8 => 21,
                                                9 => 25,
                                                10 => 1,
                                                11 => 4,
                                                12 => 2,
                                                13 => 10,
                                                14 => 12,
                                                15 => 19,
                                                16 => 7,
                                                17 => 23,
                                                18 => 18,
                                                19 => 11,
                                                20 => 17,
                                                21 => 8,
                                                22 => 13,
                                                23 => 16,
                                                24 => 14,
                                                25 => 9 
                                              }                        
                  }
                end                
                
    def notches
      { "I" => "Q", "II" => "E", "III" => "V"}
    end
end