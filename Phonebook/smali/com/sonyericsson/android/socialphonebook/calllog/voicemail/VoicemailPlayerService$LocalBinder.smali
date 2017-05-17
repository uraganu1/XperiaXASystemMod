.class public Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$LocalBinder;
.super Landroid/os/Binder;
.source "VoicemailPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$LocalBinder;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService$LocalBinder;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlayerService;

    return-object v0
.end method
