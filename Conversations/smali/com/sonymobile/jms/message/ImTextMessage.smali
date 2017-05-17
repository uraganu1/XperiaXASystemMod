.class public final Lcom/sonymobile/jms/message/ImTextMessage;
.super Lcom/sonymobile/jms/message/AbstractImUserMessage;
.source "ImTextMessage.java"

# interfaces
.implements Lcom/sonymobile/jms/message/ImUserMessage;
.implements Lcom/sonymobile/jms/message/ImMessage;


# instance fields
.field private final mMimeType:Ljava/lang/String;

.field private final mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>(JJLcom/sonymobile/jms/message/ImUserMessage$Direction;Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "localTimestamp"    # J
    .param p3, "sentTimestamp"    # J
    .param p5, "direction"    # Lcom/sonymobile/jms/message/ImUserMessage$Direction;
    .param p6, "contact"    # Lcom/sonymobile/jms/contact/ImContactNumber;
    .param p7, "msgId"    # Ljava/lang/String;
    .param p8, "mimeType"    # Ljava/lang/String;
    .param p9, "text"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct/range {p0 .. p7}, Lcom/sonymobile/jms/message/AbstractImUserMessage;-><init>(JJLcom/sonymobile/jms/message/ImUserMessage$Direction;Lcom/sonymobile/jms/contact/ImContactNumber;Ljava/lang/String;)V

    .line 19
    iput-object p8, p0, Lcom/sonymobile/jms/message/ImTextMessage;->mMimeType:Ljava/lang/String;

    .line 20
    iput-object p9, p0, Lcom/sonymobile/jms/message/ImTextMessage;->mText:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImTextMessage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sonymobile/jms/message/ImTextMessage;->mText:Ljava/lang/String;

    return-object v0
.end method
