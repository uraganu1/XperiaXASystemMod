.class final Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify$2;
.super Ljava/lang/Object;
.source "ConversationsLinkify.java"

# interfaces
.implements Landroid/text/util/Linkify$TransformFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "matcher"    # Ljava/util/regex/Matcher;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "matchingRegion":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 89
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 92
    .local v1, "character":C
    const/16 v5, 0x23

    if-eq v1, v5, :cond_0

    .line 93
    const/16 v5, 0x2a

    if-ne v1, v5, :cond_2

    .line 96
    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_2
    const/16 v5, 0x2b

    if-eq v1, v5, :cond_0

    .line 95
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    .line 92
    if-eqz v5, :cond_1

    goto :goto_1

    .line 101
    .end local v1    # "character":C
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
