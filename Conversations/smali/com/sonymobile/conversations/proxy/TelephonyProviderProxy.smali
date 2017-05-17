.class Lcom/sonymobile/conversations/proxy/TelephonyProviderProxy;
.super Ljava/lang/Object;
.source "TelephonyProviderProxy.java"

# interfaces
.implements Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addInboxMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z
    .param p7, "subId"    # I

    .prologue
    move v0, p7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 35
    invoke-static/range {v0 .. v6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addSentMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Landroid/net/Uri;
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "subId"    # I

    .prologue
    move v0, p6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 41
    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recipient"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p1, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "recipients":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmailAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
