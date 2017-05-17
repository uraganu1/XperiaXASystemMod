.class public final enum Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;
.super Ljava/lang/Enum;
.source "ExpandableNotificationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

.field public static final enum HANDHELD:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

.field public static final enum WEARABLE:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    const-string/jumbo v1, "HANDHELD"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->HANDHELD:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    new-instance v0, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    const-string/jumbo v1, "WEARABLE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->WEARABLE:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    sget-object v1, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->HANDHELD:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->WEARABLE:Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->$VALUES:[Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;->$VALUES:[Lcom/sonyericsson/conversations/notifications/ExpandableNotificationUtil$ActionStyle;

    return-object v0
.end method
