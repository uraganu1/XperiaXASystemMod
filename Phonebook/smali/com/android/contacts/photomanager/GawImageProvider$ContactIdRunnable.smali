.class Lcom/android/contacts/photomanager/GawImageProvider$ContactIdRunnable;
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
    name = "ContactIdRunnable"
.end annotation


# instance fields
.field private final mContactId:J

.field final synthetic this$0:Lcom/android/contacts/photomanager/GawImageProvider;


# direct methods
.method public constructor <init>(Lcom/android/contacts/photomanager/GawImageProvider;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/contacts/photomanager/GawImageProvider;
    .param p2, "contactId"    # J

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/contacts/photomanager/GawImageProvider$ContactIdRunnable;->this$0:Lcom/android/contacts/photomanager/GawImageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-wide p2, p0, Lcom/android/contacts/photomanager/GawImageProvider$ContactIdRunnable;->mContactId:J

    .line 218
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/contacts/photomanager/GawImageProvider$ContactIdRunnable;->this$0:Lcom/android/contacts/photomanager/GawImageProvider;

    invoke-static {v0}, Lcom/android/contacts/photomanager/GawImageProvider;->-get0(Lcom/android/contacts/photomanager/GawImageProvider;)Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/contacts/photomanager/GawImageProvider$ContactIdRunnable;->mContactId:J

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/gaw/GawManager;->getCharsForContact(J)Lcom/sonymobile/generativeartwork/helper/OutputSymbols;

    .line 223
    return-void
.end method
