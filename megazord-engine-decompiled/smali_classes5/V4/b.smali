.class public LV4/b;
.super LX7/i;
.source "SourceFile"


# static fields
.field public static final n:I = 0x1

.field public static final o:LX7/e;


# instance fields
.field public m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "LV4/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LX7/e;

    invoke-direct {v0}, LX7/e;-><init>()V

    sput-object v0, LV4/b;->o:LX7/e;

    return-void
.end method

.method public constructor <init>(LV4/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    iget-object v0, p1, LV4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LA6/c;

    invoke-direct {v1}, LA6/c;-><init>()V

    invoke-direct {p0, v0, v1}, LX7/i;-><init>(Ljava/lang/String;LX7/j;)V

    new-instance v0, LY7/f;

    new-instance v1, LV4/b$a;

    invoke-direct {v1, p0}, LV4/b$a;-><init>(LV4/b;)V

    invoke-direct {v0, v1}, LY7/f;-><init>(LY7/g;)V

    invoke-super {p0, v0}, LX7/i;->a(LY7/a;)LX7/i;

    new-instance v0, LV4/b$b;

    invoke-direct {v0, p0}, LV4/b$b;-><init>(LV4/b;)V

    iput-object v0, p0, LX7/i;->j:LX7/c;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LV4/b;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LV4/b;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LV4/b;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV4/a;

    iget-object v1, v0, LV4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, LV4/a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public u()LV4/a;
    .locals 1

    iget-object v0, p0, LV4/b;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LV4/b;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV4/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
