(defun chatbot (input)
  (cond
    ((string-equal input "hello")
     "Hello! How can I help you?")
    ((string-equal input "bye")
     "Goodbye!")
    (t "I don't understand.")))

(print (chatbot "hello"))
(print (chatbot "bye"))
