.class public interface abstract Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher$OnVoicemailFetchListener;
.super Ljava/lang/Object;
.source "VoicemailFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnVoicemailFetchListener"
.end annotation


# virtual methods
.method public abstract onFailed(Landroid/net/Uri;)V
.end method

.method public abstract onSuccess(Landroid/net/Uri;)V
.end method

.method public abstract onTimeout(Landroid/net/Uri;)V
.end method
