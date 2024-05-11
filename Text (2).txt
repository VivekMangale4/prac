responses = {
    "greeting"    : "Hello! Welcome to Ecommerce",
    "products"    : "[shirts, pants, shoes, phone]",
    "product_info": {
        "shirts": "Add to cart?",
        "pants" : "Add to cart?",
        "shoes" : "Add to cart?",
        "phone" : "Add to cart?"
    },
    "yes": "Item added to your cart!",
    "checkout"  : "Order placed successfully!!",
    "options"   : "[products, checkout]",
    "default"   : "Sorry, could not understand"
}

def respond_msg(message):
    message = message.lower()
    
    if "shirts" in message:
        return responses["product_info"]["shirts"]
    elif "pants" in message:
        return responses["product_info"]["pants"]
    elif "shoes" in message:
        return responses["product_info"]["shoes"]
    elif "phone" in message:
        return responses["product_info"]["phone"]
    
    elif "hello" in message or "hi" in message or "start" in message:
        return responses["greeting"]
    elif "options" in message:
        return responses["options"]
    elif "products" in message:
        return responses["products"]
    
    elif "yes" in message:
        return responses["yes"]
    elif "checkout" in message:
        return responses["checkout"]
    else:
        return responses["default"]

print("Enter 'start' to chat....")

while True:
    user_input = input("You: ")
    if user_input.lower() == "exit":
        print("Bot: Thank you...")
        break
    else:
        response = respond_msg(user_input)
        #for r in response:
        print("Bot: ", response)
        
