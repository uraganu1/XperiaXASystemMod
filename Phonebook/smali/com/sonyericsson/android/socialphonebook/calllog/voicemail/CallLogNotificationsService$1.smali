.class Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService$1;
.super Ljava/lang/Object;
.source "CallLogNotificationsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;->markAllNewVoicemailsAsOldAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;->-get0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;)Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper;->markNewVoicemailsAsold()V

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService$1;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;->-set0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/CallLogNotificationsService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 113
    return-void
.end method
