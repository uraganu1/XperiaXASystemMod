.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$6$1;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;

.field final synthetic val$append:Landroid/text/Spannable;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;Landroid/text/Spannable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;
    .param p2, "val$append"    # Landroid/text/Spannable;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6$1;->this$1:Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6$1;->val$append:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6$1;->this$1:Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6$1;->val$append:Landroid/text/Spannable;

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 693
    return-void
.end method
