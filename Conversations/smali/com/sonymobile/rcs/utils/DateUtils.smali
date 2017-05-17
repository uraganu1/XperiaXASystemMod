.class public Lcom/sonymobile/rcs/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static ISO8601DATEFORMAT:[Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private static UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string/jumbo v0, "UTC"

    .line 39
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/utils/DateUtils;->UTC:Ljava/util/TimeZone;

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mmZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/rcs/utils/DateUtils;->ISO8601DATEFORMAT:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeDate(Ljava/lang/String;)J
    .locals 14
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, 0x0

    const-wide/16 v4, -0x1

    .local v4, "millis":J
    const-string/jumbo v7, ":"

    .line 74
    invoke-virtual {p0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_0
    :goto_0
    const-string/jumbo v7, "Z$"

    const-string/jumbo v8, "+0000"

    .line 79
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "normalizedDate":Ljava/lang/String;
    const/4 v1, 0x0

    .line 80
    .local v1, "i":I
    :goto_1
    cmp-long v7, v4, v12

    if-nez v7, :cond_1

    sget-object v7, Lcom/sonymobile/rcs/utils/DateUtils;->ISO8601DATEFORMAT:[Ljava/text/SimpleDateFormat;

    array-length v7, v7

    if-lt v1, v7, :cond_4

    .line 90
    :cond_1
    cmp-long v7, v4, v12

    if-nez v7, :cond_2

    .line 91
    new-instance v6, Landroid/text/format/Time;

    sget-object v7, Lcom/sonymobile/rcs/utils/DateUtils;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 92
    .local v6, "t":Landroid/text/format/Time;
    invoke-virtual {v6, p0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 93
    invoke-virtual {v6, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 96
    .end local v6    # "t":Landroid/text/format/Time;
    :cond_2
    return-wide v4

    .line 74
    .end local v1    # "i":I
    .end local v3    # "normalizedDate":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const-string/jumbo v8, ":"

    const-string/jumbo v9, ""

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    const-string/jumbo v7, "\\."

    const-string/jumbo v8, ":"

    .line 75
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 82
    .restart local v1    # "i":I
    .restart local v3    # "normalizedDate":Ljava/lang/String;
    :cond_4
    :try_start_0
    sget-object v7, Lcom/sonymobile/rcs/utils/DateUtils;->ISO8601DATEFORMAT:[Ljava/text/SimpleDateFormat;

    aget-object v7, v7, v1

    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 83
    .local v2, "iso8601":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 80
    .end local v2    # "iso8601":Ljava/util/Date;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/text/ParseException;
    goto :goto_2
.end method

.method public static encodeDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 57
    new-instance v0, Landroid/text/format/Time;

    sget-object v1, Lcom/sonymobile/rcs/utils/DateUtils;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "t":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
