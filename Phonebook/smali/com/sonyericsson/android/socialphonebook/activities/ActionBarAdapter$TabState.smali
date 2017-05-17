.class public final enum Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
.super Ljava/lang/Enum;
.source "ActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

.field public static final enum CALLLOG:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

.field public static final enum CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

.field public static final enum FAVORITES:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

.field public static final enum GROUPS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    const-string/jumbo v1, "CONTACTS"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    const-string/jumbo v1, "CALLLOG"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CALLLOG:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    const-string/jumbo v1, "FAVORITES"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    const-string/jumbo v1, "GROUPS"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CONTACTS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->CALLLOG:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->FAVORITES:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->GROUPS:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$TabState;

    return-object v0
.end method
