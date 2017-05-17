.class public Lcom/sonyericsson/conversations/ui/LinkifyTextView;
.super Landroid/widget/TextView;
.source "LinkifyTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;,
        Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;
    }
.end annotation


# instance fields
.field private mClickableUri:Landroid/net/Uri;

.field private mHighLightPatternIsDirty:Z

.field private mHighlightPattern:Ljava/util/regex/Pattern;

.field private mLinkifyTask:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighLightPatternIsDirty:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighLightPatternIsDirty:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighLightPatternIsDirty:Z

    .line 79
    return-void
.end method

.method private getDecoratedText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "bodyText"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor(Landroid/content/Context;)I

    move-result v0

    .line 85
    .local v0, "accentColor":I
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getSearchTextColor()I

    move-result v3

    .line 86
    .local v3, "searchTextColor":I
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 87
    .local v1, "buf":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->getInstance()Lcom/sonyericsson/conversations/ui/util/SmileyParser;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 89
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighlightPattern:Ljava/util/regex/Pattern;

    if-eqz v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 91
    .local v2, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 93
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 94
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 97
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getClickableUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mClickableUri:Landroid/net/Uri;

    return-object v0
.end method

.method public declared-synchronized linkify(Ljava/lang/String;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;)V
    .locals 3
    .param p1, "bodyText"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;

    .prologue
    monitor-enter p0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->removeClickableUri()V

    .line 125
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighLightPatternIsDirty:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 128
    return-void

    .line 130
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighLightPatternIsDirty:Z

    .line 131
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getDecoratedText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 133
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mLinkifyTask:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mLinkifyTask:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->cancel(Z)Z

    .line 140
    :cond_2
    new-instance v1, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p2, v2}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;-><init>(Lcom/sonyericsson/conversations/ui/LinkifyTextView;Ljava/lang/CharSequence;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTextViewListener;Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mLinkifyTask:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;

    .line 141
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mLinkifyTask:Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/LinkifyTextView$LinkifyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 123
    return-void

    .line 134
    :cond_3
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "text":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeClickableUri()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->setClickableUri(Landroid/net/Uri;)V

    .line 209
    return-void
.end method

.method public setClickableUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mClickableUri:Landroid/net/Uri;

    .line 200
    return-void
.end method

.method public declared-synchronized setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 1
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighlightPattern:Ljava/util/regex/Pattern;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    monitor-exit p0

    .line 107
    return-void

    .line 109
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighlightPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 111
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighLightPatternIsDirty:Z

    .line 112
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighlightPattern:Ljava/util/regex/Pattern;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    .line 105
    return-void

    .line 110
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighlightPattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/LinkifyTextView;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
