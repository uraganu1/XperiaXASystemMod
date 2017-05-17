.class public interface abstract Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$OnVoicemailStatusChangeListener;
.super Ljava/lang/Object;
.source "VoicemailPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnVoicemailStatusChangeListener"
.end annotation


# virtual methods
.method public abstract onVoicemailCompleted()V
.end method

.method public abstract onVoicemailPaused()V
.end method

.method public abstract onVoicemailStarted()V
.end method
