.class public final Lcom/google/common/html/HtmlEscapers;
.super Ljava/lang/Object;
.source "HtmlEscapers.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final HTML_ESCAPER:Lcom/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/google/common/escape/Escapers;->builder()Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "&quot;"

    const/16 v2, 0x22

    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "&#39;"

    const/16 v2, 0x27

    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "&amp;"

    const/16 v2, 0x26

    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "&lt;"

    const/16 v2, 0x3c

    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "&gt;"

    const/16 v2, 0x3e

    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    move-result-object v0

    .line 65
    sput-object v0, Lcom/google/common/html/HtmlEscapers;->HTML_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static htmlEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/common/html/HtmlEscapers;->HTML_ESCAPER:Lcom/google/common/escape/Escaper;

    return-object v0
.end method
