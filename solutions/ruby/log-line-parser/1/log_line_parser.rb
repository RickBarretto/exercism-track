class LogLineParser
          def initialize(line)
                  @line = line
          end
        
          def message
                  splitter               = @line.strip().index(":")
                  message_part = @line[splitter + 2 .. -1].strip()
                  message_part
          end
        
          def log_level
                  splitter        = @line.strip().index(":")
                  level_part  = @line[0 .. splitter - 1]
                  level_raw   = level_part[1 .. -2]
                 level_raw.downcase
          end
        
          def reformat
                  log_level_msg = self.log_level
                  log_msg = self.message
                  "#{log_msg} (#{log_level_msg})"
          end
end
