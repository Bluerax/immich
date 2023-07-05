import { LibraryEntity } from '@app/infra/entities';

export const ILibraryRepository = 'ILibraryRepository';

export interface ILibraryRepository {
  get(id: string): Promise<LibraryEntity | null>;
  getCountForUser(ownerId: string): Promise<number>;
  getById(id: string): Promise<LibraryEntity>;
  getAllByUserId(userId: string): Promise<LibraryEntity[]>;
  create(library: Partial<LibraryEntity>): Promise<LibraryEntity>;
  remove(library: LibraryEntity): Promise<void>;
}