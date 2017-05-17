.class public Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;
.super Landroid/widget/TextView;
.source "SearchCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextViewSnippet"
.end annotation


# instance fields
.field private mBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

.field private mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFullText:Ljava/lang/String;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mStyleSpan:Landroid/text/style/StyleSpan;

.field private mTargetString:Ljava/lang/String;

.field private mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->initTextViewSnippetStyle()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->initTextViewSnippetStyle()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->initTextViewSnippetStyle()V

    .line 104
    return-void
.end method

.method private initTextViewSnippetStyle()V
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor(Landroid/content/Context;)I

    move-result v0

    .line 126
    .local v0, "accentColor":I
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getSearchTextColor()I

    move-result v1

    .line 127
    .local v1, "searchTextColor":I
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 128
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

    .line 129
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mStyleSpan:Landroid/text/style/StyleSpan;

    .line 124
    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTargetString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->cancel(Z)Z

    .line 116
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    .line 118
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mFullText:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTargetString:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    .line 119
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mStyleSpan:Landroid/text/style/StyleSpan;

    move-object v1, p0

    .line 118
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;-><init>(Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Landroid/text/style/ForegroundColorSpan;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/StyleSpan;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    :cond_1
    return-void
.end method

.method public setTextAndHighlight(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "fullText"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTargetString:Ljava/lang/String;

    .line 139
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void

    .line 143
    :cond_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    .line 145
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mFullText:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTargetString:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->cancel(Z)Z

    .line 150
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    .line 152
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mFullText:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTargetString:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    .line 153
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mBackgroundColorSpan:Landroid/text/style/BackgroundColorSpan;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mStyleSpan:Landroid/text/style/StyleSpan;

    move-object v1, p0

    .line 152
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;-><init>(Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;Landroid/text/style/ForegroundColorSpan;Landroid/text/style/BackgroundColorSpan;Landroid/text/style/StyleSpan;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTask:Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$FindSnippetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void
.end method
