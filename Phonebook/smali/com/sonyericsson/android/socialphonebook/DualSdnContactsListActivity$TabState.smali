.class public final enum Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;
.super Ljava/lang/Enum;
.source "DualSdnContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

.field public static final enum SDN1LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

.field public static final enum SDN2LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    const-string/jumbo v1, "SDN1LIST"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN1LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    const-string/jumbo v1, "SDN2LIST"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN2LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN1LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN2LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 51
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN1LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 52
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN1LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    return-object v0

    .line 54
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN2LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 55
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->SDN2LIST:Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/DualSdnContactsListActivity$TabState;

    return-object v0
.end method
