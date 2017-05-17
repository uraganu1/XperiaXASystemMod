.class public interface abstract Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
.super Ljava/lang/Object;
.source "ITelephonyProviderProxy.java"


# virtual methods
.method public abstract addInboxMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZI)Landroid/net/Uri;
.end method

.method public abstract addSentMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Landroid/net/Uri;
.end method

.method public abstract getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
.end method

.method public abstract getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method public abstract getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
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
.end method

.method public abstract isEmailAddress(Ljava/lang/String;)Z
.end method
