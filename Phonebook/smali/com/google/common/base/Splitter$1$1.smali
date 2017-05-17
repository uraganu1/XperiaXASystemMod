.class Lcom/google/common/base/Splitter$1$1;
.super Lcom/google/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$1;->iterator(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/base/Splitter$1;

.field final synthetic val$separatorMatcher:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$1;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/google/common/base/CharMatcher;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/base/Splitter$1;
    .param p2, "$anonymous0"    # Lcom/google/common/base/Splitter;
    .param p3, "$anonymous1"    # Ljava/lang/CharSequence;
    .param p4, "val$separatorMatcher"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/common/base/Splitter$1$1;->this$1:Lcom/google/common/base/Splitter$1;

    iput-object p4, p0, Lcom/google/common/base/Splitter$1$1;->val$separatorMatcher:Lcom/google/common/base/CharMatcher;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$SplittingIterator;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method separatorEnd(I)I
    .locals 1
    .param p1, "separatorPosition"    # I

    .prologue
    .line 155
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method separatorStart(I)I
    .locals 2
    .param p1, "start"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/common/base/Splitter$1$1;->val$separatorMatcher:Lcom/google/common/base/CharMatcher;

    iget-object v1, p0, Lcom/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method
