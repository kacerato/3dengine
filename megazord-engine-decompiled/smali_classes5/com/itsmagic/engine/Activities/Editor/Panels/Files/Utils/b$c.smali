.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$c;
.super LZ5/c$n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->g(La5/e;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LZ5/c$n0<",
        "LQ5/j$m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:La5/e;


# direct methods
.method public constructor <init>(La5/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$entriesClassPanel"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$c;->a:La5/e;

    invoke-direct {p0}, LZ5/c$n0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$c;->a:La5/e;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->a(La5/e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, La5/e;->u1(Ljava/util/List;)V

    return-void
.end method

.method public d(LQ5/j$m0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b;->c()[LQ5/j$m0;

    move-result-object v0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, LQ5/j$m0;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/b$c;->d(LQ5/j$m0;)V

    return-void
.end method
