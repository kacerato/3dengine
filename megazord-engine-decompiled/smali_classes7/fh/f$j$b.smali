.class public Lfh/f$j$b;
.super LYg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfh/f$j;->h(ZLfh/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lfh/f$j;


# direct methods
.method public varargs constructor <init>(Lfh/f$j;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lfh/f$j$b;->c:Lfh/f$j;

    invoke-direct {p0, p2, p3}, LYg/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 2

    iget-object v0, p0, Lfh/f$j$b;->c:Lfh/f$j;

    iget-object v0, v0, Lfh/f$j;->d:Lfh/f;

    iget-object v1, v0, Lfh/f;->c:Lfh/f$h;

    invoke-virtual {v1, v0}, Lfh/f$h;->e(Lfh/f;)V

    return-void
.end method
