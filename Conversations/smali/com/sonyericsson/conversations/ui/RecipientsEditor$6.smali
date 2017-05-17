.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setFilters([Landroid/text/InputFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v3, 0x0

    .line 683
    sub-int v2, p3, p2

    if-lez v2, :cond_1

    .line 684
    add-int/lit8 v2, p5, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Landroid/text/Annotation;

    .line 683
    invoke-interface {p4, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Annotation;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 686
    .local v1, "typingOutOfBounds":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 687
    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 689
    .local v0, "append":Landroid/text/Spannable;
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 690
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get1(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6$1;

    invoke-direct {v3, p0, v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6$1;-><init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;Landroid/text/Spannable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 699
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$6;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->setSelection(I)V

    .line 700
    const-string/jumbo v2, ""

    return-object v2

    .line 683
    .end local v0    # "append":Landroid/text/Spannable;
    .end local v1    # "typingOutOfBounds":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "typingOutOfBounds":Z
    goto :goto_0

    .line 702
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method
