.class Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$InstanceHolder;
.super Ljava/lang/Object;
.source "XmsDbReadStatusChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;


# direct methods
.method static synthetic -get0()Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;
    .locals 1

    sget-object v0, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$InstanceHolder;->INSTANCE:Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;-><init>(Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;)V

    sput-object v0, Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener$InstanceHolder;->INSTANCE:Lcom/sonyericsson/conversations/notifications/XmsDbReadStatusChangeListener;

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
