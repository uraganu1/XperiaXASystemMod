.class Lcom/android/contacts/photomanager/GawImageProvider$ContactUriRunnable;
.super Ljava/lang/Object;
.source "GawImageProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/photomanager/GawImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactUriRunnable"
.end annotation


# instance fields
.field private final mContactUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/contacts/photomanager/GawImageProvider;


# direct methods
.method public constructor <init>(Lcom/android/contacts/photomanager/GawImageProvider;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/photomanager/GawImageProvider;
    .param p2, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/contacts/photomanager/GawImageProvider$ContactUriRunnable;->this$0:Lcom/android/contacts/photomanager/GawImageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/android/contacts/photomanager/GawImageProvider$ContactUriRunnable;->mContactUri:Landroid/net/Uri;

    .line 231
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/contacts/photomanager/GawImageProvider$ContactUriRunnable;->this$0:Lcom/android/contacts/photomanager/GawImageProvider;

    invoke-static {v0}, Lcom/android/contacts/photomanager/GawImageProvider;->-get0(Lcom/android/contacts/photomanager/GawImageProvider;)Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/photomanager/GawImageProvider$ContactUriRunnable;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(Landroid/net/Uri;)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    .line 236
    return-void
.end method
