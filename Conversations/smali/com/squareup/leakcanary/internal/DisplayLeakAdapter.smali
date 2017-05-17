.class final Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;
.super Landroid/widget/BaseAdapter;
.source "DisplayLeakAdapter.java"


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/leakcanary/LeakTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private opened:[Z

.field private referenceKey:Ljava/lang/String;

.field private referenceName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 41
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    const-string/jumbo v0, ""

    .line 45
    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceName:Ljava/lang/String;

    return-void
.end method

.method private elementToHtmlString(Lcom/squareup/leakcanary/LeakTraceElement;ZZ)Ljava/lang/String;
    .locals 9
    .param p1, "element"    # Lcom/squareup/leakcanary/LeakTraceElement;
    .param p2, "root"    # Z
    .param p3, "opened"    # Z

    .prologue
    const/4 v7, 0x0

    const-string/jumbo v0, ""

    .line 92
    .local v0, "htmlString":Ljava/lang/String;
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->referenceName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 94
    if-eqz p2, :cond_3

    .line 98
    :goto_0
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->type:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    sget-object v6, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    if-eq v5, v6, :cond_4

    .line 102
    :goto_1
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->holder:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    sget-object v6, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->ARRAY:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    if-ne v5, v6, :cond_5

    .line 103
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "<font color=\'#f3cf83\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->holder:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    invoke-virtual {v6}, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</font> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_2
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->className:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .local v2, "separator":I
    const/4 v5, -0x1

    .line 109
    if-eq v2, v5, :cond_6

    .line 113
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->className:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "qualifier":Ljava/lang/String;
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->className:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "simpleName":Ljava/lang/String;
    :goto_3
    if-nez p3, :cond_7

    .line 121
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<font color=\'#ffffff\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "styledClassName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->referenceName:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " <font color=\'#f3cf83\'>instance</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_5
    if-nez p3, :cond_9

    .line 135
    :cond_1
    :goto_6
    return-object v0

    .line 93
    .end local v1    # "qualifier":Ljava/lang/String;
    .end local v2    # "separator":I
    .end local v3    # "simpleName":Ljava/lang/String;
    .end local v4    # "styledClassName":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "leaks "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 95
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "references "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 99
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "<font color=\'#c48a47\'>static</font> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 102
    :cond_5
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->holder:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    sget-object v6, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->THREAD:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    if-eq v5, v6, :cond_0

    goto/16 :goto_2

    .restart local v2    # "separator":I
    :cond_6
    const-string/jumbo v1, ""

    .line 111
    .restart local v1    # "qualifier":Ljava/lang/String;
    iget-object v3, p1, Lcom/squareup/leakcanary/LeakTraceElement;->className:Ljava/lang/String;

    .restart local v3    # "simpleName":Ljava/lang/String;
    goto/16 :goto_3

    .line 118
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "<font color=\'#919191\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 126
    .restart local v4    # "styledClassName":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".<font color=\'#998bb5\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->referenceName:Ljava/lang/String;

    const-string/jumbo v7, "<"

    const-string/jumbo v8, "&lt;"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ">"

    const-string/jumbo v8, "&gt;"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 132
    :cond_9
    iget-object v5, p1, Lcom/squareup/leakcanary/LeakTraceElement;->extra:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " <font color=\'#919191\'>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/squareup/leakcanary/LeakTraceElement;->extra:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6
.end method

.method private static findById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/squareup/leakcanary/LeakTraceElement;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/LeakTraceElement;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 161
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getItem(I)Lcom/squareup/leakcanary/LeakTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 178
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 171
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 174
    return v0

    .line 172
    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 48
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 49
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getItemViewType(I)I

    move-result v10

    if-eqz v10, :cond_1

    .line 57
    if-eqz p2, :cond_3

    .line 61
    :goto_0
    sget v10, Lcom/squareup/leakcanary/R$id;->__leak_canary_row_text:I

    invoke-static {p2, v10}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 63
    .local v7, "textView":Landroid/widget/TextView;
    if-eq p1, v9, :cond_4

    move v5, v8

    .line 64
    .local v5, "isRoot":Z
    :goto_1
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-eq p1, v10, :cond_5

    move v4, v8

    .line 65
    .local v4, "isLeakingInstance":Z
    :goto_2
    invoke-virtual {p0, p1}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->getItem(I)Lcom/squareup/leakcanary/LeakTraceElement;

    move-result-object v2

    .line 66
    .local v2, "element":Lcom/squareup/leakcanary/LeakTraceElement;
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    aget-boolean v8, v8, p1

    invoke-direct {p0, v2, v5, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elementToHtmlString(Lcom/squareup/leakcanary/LeakTraceElement;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "htmlString":Ljava/lang/String;
    if-nez v4, :cond_6

    .line 70
    :cond_0
    :goto_3
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget v8, Lcom/squareup/leakcanary/R$id;->__leak_canary_row_connector:I

    invoke-static {p2, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;

    .line 73
    .local v0, "connector":Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;
    if-nez v5, :cond_7

    .line 76
    if-nez v4, :cond_8

    .line 79
    sget-object v8, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->NODE:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->setType(Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;)V

    .line 82
    :goto_4
    sget v8, Lcom/squareup/leakcanary/R$id;->__leak_canary_row_more:I

    invoke-static {p2, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/squareup/leakcanary/internal/MoreDetailsView;

    .line 83
    .local v6, "moreDetailsView":Lcom/squareup/leakcanary/internal/MoreDetailsView;
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    aget-boolean v8, v8, p1

    invoke-virtual {v6, v8}, Lcom/squareup/leakcanary/internal/MoreDetailsView;->setOpened(Z)V

    .line 86
    .end local v0    # "connector":Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;
    .end local v2    # "element":Lcom/squareup/leakcanary/LeakTraceElement;
    .end local v3    # "htmlString":Ljava/lang/String;
    .end local v4    # "isLeakingInstance":Z
    .end local v5    # "isRoot":Z
    .end local v6    # "moreDetailsView":Lcom/squareup/leakcanary/internal/MoreDetailsView;
    :goto_5
    return-object p2

    .line 50
    .end local v7    # "textView":Landroid/widget/TextView;
    :cond_1
    if-eqz p2, :cond_2

    .line 54
    :goto_6
    sget v8, Lcom/squareup/leakcanary/R$id;->__leak_canary_row_text:I

    invoke-static {p2, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 55
    .restart local v7    # "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 51
    .end local v7    # "textView":Landroid/widget/TextView;
    :cond_2
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v10, Lcom/squareup/leakcanary/R$layout;->leak_canary_ref_top_row:I

    invoke-virtual {v9, v10, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_6

    .line 58
    :cond_3
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    sget v11, Lcom/squareup/leakcanary/R$layout;->leak_canary_ref_row:I

    invoke-virtual {v10, v11, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .restart local v7    # "textView":Landroid/widget/TextView;
    :cond_4
    move v5, v9

    .line 63
    goto :goto_1

    .restart local v5    # "isRoot":Z
    :cond_5
    move v4, v9

    .line 64
    goto :goto_2

    .line 67
    .restart local v2    # "element":Lcom/squareup/leakcanary/LeakTraceElement;
    .restart local v3    # "htmlString":Ljava/lang/String;
    .restart local v4    # "isLeakingInstance":Z
    :cond_6
    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceName:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    aget-boolean v8, v8, p1

    if-eqz v8, :cond_0

    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <font color=\'#919191\'>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "</font>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 74
    .restart local v0    # "connector":Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;
    :cond_7
    sget-object v8, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->START:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->setType(Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;)V

    goto :goto_4

    .line 77
    :cond_8
    sget-object v8, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->END:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v0, v8}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->setType(Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;)V

    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 167
    return v0
.end method

.method public toggleRow(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_0

    :goto_0
    aput-boolean v0, v1, p1

    .line 152
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->notifyDataSetChanged()V

    .line 153
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 151
    goto :goto_0
.end method

.method public update(Lcom/squareup/leakcanary/LeakTrace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "leakTrace"    # Lcom/squareup/leakcanary/LeakTrace;
    .param p2, "referenceKey"    # Ljava/lang/String;
    .param p3, "referenceName"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iput-object p2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceKey:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->referenceName:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/squareup/leakcanary/LeakTrace;->elements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->opened:[Z

    .line 147
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakAdapter;->notifyDataSetChanged()V

    .line 148
    return-void

    .line 141
    :cond_0
    return-void
.end method
