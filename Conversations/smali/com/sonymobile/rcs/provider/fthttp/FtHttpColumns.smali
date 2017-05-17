.class public interface abstract Lcom/sonymobile/rcs/provider/fthttp/FtHttpColumns;
.super Ljava/lang/Object;
.source "FtHttpColumns.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "content://com.sonymobile.rcs.fthttp/fthttp"

    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/rcs/provider/fthttp/FtHttpColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
