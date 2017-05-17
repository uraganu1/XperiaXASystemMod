.class public final enum Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;
.super Ljava/lang/Enum;
.source "DeleteCallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeleteMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

.field public static final enum DELETE_FILTER_CALLLOG:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

.field public static final enum DELETE_SINGLE_CALLOG:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    const-string/jumbo v1, "DELETE_FILTER_CALLLOG"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->DELETE_FILTER_CALLLOG:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    .line 43
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    const-string/jumbo v1, "DELETE_SINGLE_CALLOG"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->DELETE_SINGLE_CALLOG:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->DELETE_FILTER_CALLLOG:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->DELETE_SINGLE_CALLOG:Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/DeleteCallDialog$DeleteMode;

    return-object v0
.end method
