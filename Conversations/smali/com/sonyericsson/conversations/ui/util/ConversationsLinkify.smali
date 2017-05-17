.class public Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;
.super Ljava/lang/Object;
.source "ConversationsLinkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify$1;,
        Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify$2;
    }
.end annotation


# static fields
.field public static final PHONEFORMAT:Ljava/util/regex/Pattern;

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "(\\+[0-9]+[\\- \\.]*)?(([\\*][\\#])|([\\*]{1,2})|([\\#]{1,2}))?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\. \\*]*[0-9\\#])"

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 36
    sput-object v0, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->PHONEFORMAT:Ljava/util/regex/Pattern;

    .line 58
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify$1;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 83
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify$2;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify$2;-><init>()V

    .line 82
    sput-object v0, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;)V
    .locals 4
    .param p0, "text"    # Landroid/text/Spannable;

    .prologue
    .line 49
    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 51
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->PHONEFORMAT:Ljava/util/regex/Pattern;

    const-string/jumbo v1, "tel:"

    .line 52
    sget-object v2, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v3, Lcom/sonyericsson/conversations/ui/util/ConversationsLinkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 51
    invoke-static {p0, v0, v1, v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    .line 48
    return-void
.end method
