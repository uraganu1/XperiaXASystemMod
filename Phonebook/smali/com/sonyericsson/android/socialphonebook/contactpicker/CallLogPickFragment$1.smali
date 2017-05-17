.class Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;
.super Ljava/lang/Object;
.source "CallLogPickFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/util/CallLogContentHelper$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    :cond_0
    if-eqz p1, :cond_1

    .line 105
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;->-get1(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1$1;-><init>(Lcom/sonyericsson/android/socialphonebook/contactpicker/CallLogPickFragment$1;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
