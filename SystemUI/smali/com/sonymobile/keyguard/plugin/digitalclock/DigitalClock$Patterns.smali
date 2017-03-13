.class final Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;
.super Ljava/lang/Object;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Patterns"
.end annotation


# static fields
.field static cacheKey:Ljava/lang/String;

.field static clockView12:Ljava/lang/String;

.field static clockView24:Ljava/lang/String;

.field static dateView:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static update(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 226
    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 229
    .local v5, "res":Landroid/content/res/Resources;
    sget v6, Lcom/android/keyguard/R$string;->abbrev_wday_month_day_no_year:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "dateViewSkel":Ljava/lang/String;
    sget v6, Lcom/android/keyguard/R$string;->clock_12hr_format:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "clockView12Skel":Ljava/lang/String;
    sget v6, Lcom/android/keyguard/R$string;->clock_24hr_format:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "clockView24Skel":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "key":Ljava/lang/String;
    sget-object v6, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->cacheKey:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-static {v4, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->dateView:Ljava/lang/String;

    .line 237
    invoke-static {v4, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->clockView12:Ljava/lang/String;

    .line 240
    const-string/jumbo v6, "a"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 241
    sget-object v6, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->clockView12:Ljava/lang/String;

    const-string/jumbo v7, "a"

    const-string/jumbo v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->clockView12:Ljava/lang/String;

    .line 244
    :cond_1
    invoke-static {v4, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->clockView24:Ljava/lang/String;

    .line 246
    sput-object v3, Lcom/sonymobile/keyguard/plugin/digitalclock/DigitalClock$Patterns;->cacheKey:Ljava/lang/String;

    .line 224
    return-void
.end method
