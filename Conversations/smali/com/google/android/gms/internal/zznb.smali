.class public final Lcom/google/android/gms/internal/zznb;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final zzaoi:Ljava/util/regex/Pattern;

.field private static final zzaoj:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\\\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zznb;->zzaoi:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "[\\\\\"/\u0008\u000c\n\r\t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zznb;->zzaoj:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static zzcU(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zznb;->zzaoj:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "\\\\b"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "\\\\\\\""

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "\\\\\\\\"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "\\\\/"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "\\\\f"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :sswitch_5
    const-string/jumbo v2, "\\\\n"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :sswitch_6
    const-string/jumbo v2, "\\\\r"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "\\\\t"

    invoke-virtual {v1, v0, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_3
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_7
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_6
        0x22 -> :sswitch_1
        0x2f -> :sswitch_3
        0x5c -> :sswitch_2
    .end sparse-switch
.end method
