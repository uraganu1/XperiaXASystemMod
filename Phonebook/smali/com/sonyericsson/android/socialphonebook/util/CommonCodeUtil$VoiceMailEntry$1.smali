.class Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry$1;
.super Ljava/lang/Thread;
.source "CommonCodeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->reload(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->-wrap0(Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;Landroid/content/Context;)V

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry$1;->this$1:Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;->-get0(Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$VoiceMailEntry;)Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/util/CommonCodeUtil$ThreadLock;->unlock()V

    .line 341
    return-void
.end method
