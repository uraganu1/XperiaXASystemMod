.class public Lcom/mediatek/beam/BeamShareTabAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "BeamShareTabAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 57
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const v6, 0x7f020068

    const/4 v9, 0x1

    .line 66
    new-instance v4, Lcom/mediatek/beam/BeamShareTask;

    invoke-direct {v4, p3}, Lcom/mediatek/beam/BeamShareTask;-><init>(Landroid/database/Cursor;)V

    .line 69
    .local v4, "task":Lcom/mediatek/beam/BeamShareTask;
    const v7, 0x7f13002d

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 70
    .local v2, "icon":Landroid/widget/ImageView;
    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getDirection()Lcom/mediatek/beam/BeamShareTask$Direction;

    move-result-object v7

    sget-object v8, Lcom/mediatek/beam/BeamShareTask$Direction;->in:Lcom/mediatek/beam/BeamShareTask$Direction;

    if-ne v7, v8, :cond_2

    .line 71
    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getState()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 72
    const v6, 0x7f020069

    .line 71
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    :goto_0
    const v6, 0x7f13002e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 84
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getData()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "filename":Ljava/lang/String;
    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    .line 86
    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v6, 0x7f13002f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "textView":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 90
    .restart local v5    # "textView":Landroid/widget/TextView;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getModifiedDate()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 91
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getModifiedDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 92
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "modifiedDate":Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v6, 0x7f130030

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "textView":Landroid/widget/TextView;
    check-cast v5, Landroid/widget/TextView;

    .line 98
    .restart local v5    # "textView":Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getTotalBytes()J

    move-result-wide v6

    invoke-static {p2, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void

    .line 75
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "modifiedDate":Ljava/lang/CharSequence;
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v4}, Lcom/mediatek/beam/BeamShareTask;->getState()I

    move-result v7

    if-ne v7, v9, :cond_3

    .line 76
    const v6, 0x7f02006a

    .line 75
    :cond_3
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 93
    .restart local v0    # "d":Ljava/util/Date;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v5    # "textView":Landroid/widget/TextView;
    :cond_4
    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "modifiedDate":Ljava/lang/CharSequence;
    goto :goto_1
.end method
