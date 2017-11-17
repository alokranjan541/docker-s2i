FROM alpine/git
ADD s2i .
CMD ["/main"]
