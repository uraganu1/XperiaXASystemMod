.class public Lcom/sonyericsson/conversations/util/ConversationPatterns;
.super Ljava/lang/Object;
.source "ConversationPatterns.java"


# static fields
.field public static final PHONE:Ljava/util/regex/Pattern;

.field public static final PHONE_INVALID_CHARACTERS:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "(\\+[0-9]+[\\- \\.]*)?(\\*|\\#)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.]+[0-9])"

    .line 38
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 37
    sput-object v0, Lcom/sonyericsson/conversations/util/ConversationPatterns;->PHONE:Ljava/util/regex/Pattern;

    .line 50
    const-string/jumbo v0, "(^.*[^\\+\\d\\*#\\- \\.\\(\\)\\s\u202a\u202c].*$)"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/util/ConversationPatterns;->PHONE_INVALID_CHARACTERS:Ljava/util/regex/Pattern;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
