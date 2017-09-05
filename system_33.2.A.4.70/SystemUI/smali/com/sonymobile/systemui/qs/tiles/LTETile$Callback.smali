.class final Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;
.super Ljava/lang/Object;
.source "LTETile.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/policy/LTEController$LTESettingsChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/qs/tiles/LTETile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/qs/tiles/LTETile;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/qs/tiles/LTETile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/tiles/LTETile;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/LTETile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/qs/tiles/LTETile;Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/qs/tiles/LTETile;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;-><init>(Lcom/sonymobile/systemui/qs/tiles/LTETile;)V

    return-void
.end method


# virtual methods
.method public onLTESettingsChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/systemui/qs/tiles/LTETile$Callback;->this$0:Lcom/sonymobile/systemui/qs/tiles/LTETile;

    invoke-static {v0}, Lcom/sonymobile/systemui/qs/tiles/LTETile;->-wrap0(Lcom/sonymobile/systemui/qs/tiles/LTETile;)V

    .line 73
    return-void
.end method
