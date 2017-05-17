.class public final Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
.super Lcom/sonymobile/jms/contact/ImContactNumber;
.source "ImOne2OneConversationId.java"

# interfaces
.implements Lcom/sonymobile/jms/conversation/ImConversationId;


# static fields
.field private static final serialVersionUID:J = 0x1cc8dba587df752aL


# direct methods
.method private constructor <init>(Lcom/sonymobile/jms/contact/ImContactNumber;)V
    .locals 1
    .param p1, "contactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/sonymobile/jms/contact/ImContactNumber;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/jms/contact/ImContactNumber;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static fromImContactNumber(Lcom/sonymobile/jms/contact/ImContactNumber;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .locals 1
    .param p0, "imContactNumber"    # Lcom/sonymobile/jms/contact/ImContactNumber;

    .prologue
    .line 19
    new-instance v0, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    invoke-direct {v0, p0}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;-><init>(Lcom/sonymobile/jms/contact/ImContactNumber;)V

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .locals 2
    .param p0, "imOne2OneConversationId"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;

    invoke-static {p0}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;-><init>(Lcom/sonymobile/jms/contact/ImContactNumber;)V

    return-object v0
.end method


# virtual methods
.method public asGroupId()Lcom/sonymobile/jms/conversation/ImGroupConversationId;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "This id is a one2oneId!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asOne2OneId()Lcom/sonymobile/jms/conversation/ImOne2OneConversationId;
    .locals 0

    .prologue
    .line 33
    return-object p0
.end method

.method public isGroupId()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
