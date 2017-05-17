.class Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;
.super Ljava/lang/Object;
.source "PrefixDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;

.field final synthetic val$currentPhoneNumber:Ljava/lang/String;

.field final synthetic val$numbers:[Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;
    .param p2, "val$numbers"    # [Ljava/lang/String;
    .param p3, "val$currentPhoneNumber"    # Ljava/lang/String;
    .param p4, "val$type"    # I

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;->val$numbers:[Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;->val$currentPhoneNumber:Ljava/lang/String;

    iput p4, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;->val$numbers:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;->val$numbers:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;->val$currentPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;->val$currentPhoneNumber:Ljava/lang/String;

    .line 105
    .local v0, "number":Ljava/lang/String;
    const-string/jumbo v2, "#31#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 107
    const-string/jumbo v2, "#31#"

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v2, "#31#"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_1
    :goto_0
    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;->val$type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 116
    const-string/jumbo v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 115
    if-eqz v2, :cond_2

    .line 117
    const-string/jumbo v2, "+39"

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;->val$numbers:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 121
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .end local v0    # "number":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;)Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 127
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$1;->this$0:Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->-get0(Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;)Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment$OnPrefixInsertedListener;->onPrefixInserted(Ljava/lang/String;)V

    .line 95
    :cond_4
    return-void

    .line 109
    .restart local v0    # "number":Ljava/lang/String;
    :cond_5
    const-string/jumbo v2, "*31#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    const-string/jumbo v2, "*31#"

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string/jumbo v2, "*31#"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_6
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
