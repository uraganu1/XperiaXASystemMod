.class public final enum Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;
.super Ljava/lang/Enum;
.source "ActionBarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

.field public static final enum CHANGE_SEARCH_QUERY:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

.field public static final enum START_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

.field public static final enum STOP_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    const-string/jumbo v1, "CHANGE_SEARCH_QUERY"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->CHANGE_SEARCH_QUERY:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    const-string/jumbo v1, "START_SEARCH_MODE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->START_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    const-string/jumbo v1, "STOP_SEARCH_MODE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->STOP_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->CHANGE_SEARCH_QUERY:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->START_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->STOP_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    return-object v0
.end method
