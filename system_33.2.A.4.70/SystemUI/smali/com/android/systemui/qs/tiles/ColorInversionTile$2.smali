.class Lcom/android/systemui/qs/tiles/ColorInversionTile$2;
.super Ljava/lang/Object;
.source "ColorInversionTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ColorInversionTile;->handleLongClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ColorInversionTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ColorInversionTile;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$2;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ColorInversionTile$2;->this$0:Lcom/android/systemui/qs/tiles/ColorInversionTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ColorInversionTile;->-wrap1(Lcom/android/systemui/qs/tiles/ColorInversionTile;)V

    .line 103
    return-void
.end method
