.class final Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify$1;
.super Ljava/lang/Object;
.source "ConversationsLinkify.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


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
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 64
    .local v0, "digitCount":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_3

    .line 65
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 69
    const/4 v2, 0x3

    if-lt v0, v2, :cond_2

    .line 70
    const/4 v2, 0x1

    return v2

    .line 67
    :cond_1
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    .line 64
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_3
    const/4 v2, 0x0

    return v2
.end method
