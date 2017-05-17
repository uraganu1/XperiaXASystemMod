.class public Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;
.super Ljava/lang/Object;
.source "VilteFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static sViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->sViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    if-nez v1, :cond_0

    .line 40
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getBrandName()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "brandName":Ljava/lang/String;
    const-string/jumbo v1, "docomo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/DocomoViltePlugin;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/DocomoViltePlugin;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->sViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    .line 55
    :goto_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Intialized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->sViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .end local v0    # "brandName":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->sViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    return-object v1

    .line 44
    .restart local v0    # "brandName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "verizon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VerizonViltePlugin;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->sViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/GenericViltePlugin;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->sViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    goto :goto_0

    .line 51
    :cond_3
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VilteUnsupportedPlugin;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/vilte/plugin/VilteUnsupportedPlugin;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sonyericsson/android/socialphonebook/vilte/VilteFactory;->sViltePlugin:Lcom/sonyericsson/android/socialphonebook/vilte/ViltePlugin;

    goto :goto_0
.end method
