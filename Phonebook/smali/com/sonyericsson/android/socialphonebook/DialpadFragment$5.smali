.class Lcom/sonyericsson/android/socialphonebook/DialpadFragment$5;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->onSimStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/DialpadFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/DialpadFragment;)V

    .line 1178
    return-void
.end method
