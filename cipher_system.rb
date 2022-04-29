
ALPHABET_D = ('a'..'z').to_a
ALPHABET_U = ('A'..'Z').to_a
def rot13(secret_messages)
    n_secret_messages = []
    secret_messages.map do |msg|
        n_msg = ""
        msg.split("").map do | c |
            d_index = ALPHABET_D.index(c)
            n_msg.concat(ALPHABET_D[d_index - 13]) if d_index
            u_index = ALPHABET_U.index(c)
            n_msg.concat(ALPHABET_U[u_index - 13]) if u_index
            n_msg.concat(c) if u_index.nil? and d_index.nil?
        end
        n_secret_messages.push(n_msg)
    end
    n_secret_messages
end

p rot13(["Gb trg gb gur bgure fvqr!", "Why did the chicken cross the road?"])