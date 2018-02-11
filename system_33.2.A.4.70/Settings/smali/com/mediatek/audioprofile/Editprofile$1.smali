.class Lcom/mediatek/audioprofile/Editprofile$1;
.super Landroid/database/ContentObserver;
.source "Editprofile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/Editprofile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/Editprofile;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/Editprofile;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/audioprofile/Editprofile;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/mediatek/audioprofile/Editprofile$1;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile$1;->this$0:Lcom/mediatek/audioprofile/Editprofile;

    invoke-static {v0}, Lcom/mediatek/audioprofile/Editprofile;->-get0(Lcom/mediatek/audioprofile/Editprofile;)Lcom/mediatek/audioprofile/Editprofile$H;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/Editprofile$H;->sendEmptyMessage(I)Z

    .line 144
    return-void
.end method
