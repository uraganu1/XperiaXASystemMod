.class interface abstract Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask$EstimateListener;
.super Ljava/lang/Object;
.source "EstimateJoynMediaSizeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/EstimateJoynMediaSizeTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "EstimateListener"
.end annotation


# virtual methods
.method public abstract onEstimateDone(Lcom/sonyericsson/conversations/conversation/Conversation;Lcom/sonyericsson/conversations/model/JoynMessage;JJLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            "Lcom/sonyericsson/conversations/model/JoynMessage;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method
