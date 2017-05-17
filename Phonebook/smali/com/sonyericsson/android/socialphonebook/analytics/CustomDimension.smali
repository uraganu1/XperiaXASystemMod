.class public Lcom/sonyericsson/android/socialphonebook/analytics/CustomDimension;
.super Ljava/lang/Object;
.source "CustomDimension.java"


# static fields
.field public static final CUSTOM_VARIABLE_SAMPLE_RATE:I = 0x3

.field private static final GA_SAMPLE_RATE_100:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/analytics/CustomDimension;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertDimensionIndexToKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/analytics/CustomDimension;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "GaGtmHelperWrapper is disabled."

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-object v3

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 33
    .local v0, "key":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 41
    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 35
    .restart local v0    # "key":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method static setCustomDimensions(Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;Landroid/content/Context;)V
    .locals 0
    .param p0, "wrapper"    # Lcom/sonyericsson/android/socialphonebook/analytics/GaGtmHelperWrapper;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    return-void
.end method
