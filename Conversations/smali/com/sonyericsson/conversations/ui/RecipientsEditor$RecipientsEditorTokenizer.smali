.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientsEditorTokenizer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mfilterEditor:Landroid/widget/MultiAutoCompleteTextView;

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Landroid/content/Context;Landroid/widget/MultiAutoCompleteTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "list"    # Landroid/widget/MultiAutoCompleteTextView;

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1435
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->mfilterEditor:Landroid/widget/MultiAutoCompleteTextView;

    .line 1436
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    .line 1434
    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 1462
    move v0, p2

    .line 1463
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1465
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1466
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap4(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1467
    return v0

    .line 1469
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1473
    :cond_1
    return v1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 1445
    move v0, p2

    .line 1446
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap4(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1449
    :cond_0
    :goto_1
    if-ge v0, p2, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap4(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 1450
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1447
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1453
    :cond_3
    return v0
.end method

.method public getNameAndNumbers()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1508
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->mfilterEditor:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v11}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 1509
    .local v8, "sp":Landroid/text/Spanned;
    invoke-interface {v8}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 1510
    .local v4, "len":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1512
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;>;"
    const/4 v10, 0x0

    .line 1513
    .local v10, "start":I
    const/4 v0, 0x0

    .line 1514
    .local v0, "i":I
    :goto_0
    add-int/lit8 v11, v4, 0x1

    if-ge v0, v11, :cond_8

    .line 1515
    if-eq v0, v4, :cond_0

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-interface {v8, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v12

    invoke-static {v11, v12}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap4(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1516
    :cond_0
    if-le v0, v10, :cond_3

    .line 1517
    invoke-interface {v8, v10}, Landroid/text/Spanned;->charAt(I)C

    move-result v11

    const/16 v12, 0x200b

    if-ne v11, v12, :cond_1

    .line 1518
    add-int/lit8 v10, v10, 0x1

    .line 1520
    :cond_1
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v11}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get7(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientBubble;

    move-result-object v11

    invoke-virtual {v11, v8, v10, v0}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->getNameAt(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\n"

    const-string/jumbo v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1521
    .local v6, "name":Ljava/lang/String;
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v11}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get7(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientBubble;

    move-result-object v11

    invoke-virtual {v11, v8, v10, v0}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->getNumberAt(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\n"

    .line 1522
    const-string/jumbo v13, ""

    .line 1521
    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1523
    .local v7, "number":Ljava/lang/String;
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v11}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get7(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientBubble;

    move-result-object v11

    invoke-virtual {v11, v8, v10, v0}, Lcom/sonyericsson/conversations/ui/RecipientBubble;->getIsImContactAt(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v2

    .line 1524
    .local v2, "isImContactInContactDb":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1525
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v11, v7}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap3(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Ljava/lang/String;)Z

    move-result v1

    .line 1526
    .local v1, "isImContact":Z
    :goto_1
    new-instance v3, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v3, v6, v7, v11}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1530
    .local v3, "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;->-get1(Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1541
    :cond_2
    :goto_2
    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->mContext:Landroid/content/Context;

    invoke-static {v8, v10, v0, v11}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap5(Landroid/text/Spanned;IILandroid/content/Context;)I

    move-result v9

    .line 1542
    .local v9, "spanLen":I
    if-le v9, v0, :cond_3

    .line 1543
    move v0, v9

    .line 1547
    .end local v1    # "isImContact":Z
    .end local v2    # "isImContactInContactDb":Ljava/lang/String;
    .end local v3    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "number":Ljava/lang/String;
    .end local v9    # "spanLen":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1549
    :goto_3
    if-ge v0, v4, :cond_6

    invoke-interface {v8, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-ne v11, v12, :cond_6

    .line 1550
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1525
    .restart local v2    # "isImContactInContactDb":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "number":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .restart local v1    # "isImContact":Z
    goto :goto_1

    .line 1531
    .restart local v3    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    :cond_5
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1553
    .end local v1    # "isImContact":Z
    .end local v2    # "isImContactInContactDb":Ljava/lang/String;
    .end local v3    # "item":Lcom/sonyericsson/conversations/ui/RecipientsEditor$SpanItem;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "number":Ljava/lang/String;
    :cond_6
    move v10, v0

    goto/16 :goto_0

    .line 1555
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1559
    :cond_8
    return-object v5
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "charSeq"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1482
    move-object v8, p1

    .line 1483
    .local v8, "text":Ljava/lang/CharSequence;
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 1485
    .local v6, "i":I
    :goto_0
    if-lez v6, :cond_0

    add-int/lit8 v0, v6, -0x1

    invoke-interface {v8, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    .line 1486
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1489
    :cond_0
    if-lez v6, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    add-int/lit8 v2, v6, -0x1

    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-wrap4(Lcom/sonyericsson/conversations/ui/RecipientsEditor;C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1490
    return-object v8

    .line 1495
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientsEditorTokenizer;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->-get4(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1496
    .local v7, "separator":Ljava/lang/String;
    instance-of v0, v8, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 1497
    new-instance v4, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v4, "sp":Landroid/text/SpannableString;
    move-object v0, v8

    .line 1498
    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 1499
    return-object v4

    .line 1501
    .end local v4    # "sp":Landroid/text/SpannableString;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
