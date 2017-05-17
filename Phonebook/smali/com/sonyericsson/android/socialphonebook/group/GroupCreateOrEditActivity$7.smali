.class Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$7;
.super Ljava/lang/Object;
.source "GroupCreateOrEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$7;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 369
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 371
    .local v0, "shouldAllow":Z
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$7;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get11(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$7;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-get13(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$7;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-wrap4(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Z)V

    .line 377
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$7;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-static {v1, v0}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->-set4(Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;Z)Z

    .line 368
    :cond_0
    return-void

    .line 369
    .end local v0    # "shouldAllow":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "shouldAllow":Z
    goto :goto_0

    .line 375
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity$7;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupCreateOrEditActivity;->invalidateOptionsMenu()V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 364
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 360
    return-void
.end method
