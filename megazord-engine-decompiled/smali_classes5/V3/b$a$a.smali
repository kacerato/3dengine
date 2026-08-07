.class public LV3/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV3/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/io/File;

.field public final synthetic d:LV3/b$a;


# direct methods
.method public constructor <init>(LV3/b$a;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalName",
            "val$imageFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LV3/b$a$a;->d:LV3/b$a;

    iput-object p2, p0, LV3/b$a$a;->b:Ljava/lang/String;

    iput-object p3, p0, LV3/b$a$a;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LV3/b$a$a;->d:LV3/b$a;

    iget-object v0, v0, LV3/b$a;->c:LV3/b$c;

    iget-object v1, p0, LV3/b$a$a;->b:Ljava/lang/String;

    iget-object v2, p0, LV3/b$a$a;->c:Ljava/io/File;

    invoke-interface {v0, v1, v2}, LV3/b$c;->onSuccess(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
