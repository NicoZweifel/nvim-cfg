FROM node:18-bullseye

RUN apt-get update -y 
RUN apt-get install neovim -y
RUN apt-get install python3-neovim -y

COPY --from=golang:1.20-bullseye /usr/local/go/ /usr/local/go/
 
ENV PATH="/usr/local/go/bin:${PATH}"


COPY . ~/.config/nvim/

RUN nvim --headless "+Lazy! install" +qa
RUN nvim --headless "+Lazy! sync" +qa

CMD nvim
