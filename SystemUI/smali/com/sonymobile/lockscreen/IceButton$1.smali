.class Lcom/sonymobile/lockscreen/IceButton$1;
.super Ljava/lang/Object;
.source "IceButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/lockscreen/IceButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/lockscreen/IceButton;


# direct methods
.method constructor <init>(Lcom/sonymobile/lockscreen/IceButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/lockscreen/IceButton;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonymobile/lockscreen/IceButton$1;->this$0:Lcom/sonymobile/lockscreen/IceButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/lockscreen/IceButton$1;->this$0:Lcom/sonymobile/lockscreen/IceButton;

    invoke-static {v0}, Lcom/sonymobile/lockscreen/IceButton;->-wrap0(Lcom/sonymobile/lockscreen/IceButton;)V

    .line 93
    return-void
.end method
