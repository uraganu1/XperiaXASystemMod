.class public final enum Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;
.super Ljava/lang/Enum;
.source "MenuPluginFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuPluginType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

.field public static final enum CALL_LOG:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

.field public static final enum QUICK_CONTACT:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    const-string/jumbo v1, "CALL_LOG"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->CALL_LOG:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    const-string/jumbo v1, "QUICK_CONTACT"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->QUICK_CONTACT:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->CALL_LOG:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->QUICK_CONTACT:Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/plugin/MenuPluginFactory$MenuPluginType;

    return-object v0
.end method
