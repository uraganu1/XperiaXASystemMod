.class Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogExtensionsContentObserver;
.super Landroid/database/ContentObserver;
.source "CallLogDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLogExtensionsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogExtensionsContentObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    .line 558
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 557
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 563
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 564
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment$CallLogExtensionsContentObserver;->this$0:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;->-wrap5(Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailFragment;)V

    .line 562
    return-void
.end method
